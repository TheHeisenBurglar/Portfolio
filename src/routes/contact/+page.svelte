<script>
    import emailjs from 'emailjs-com';

    $: loading = false;
    $: submitted = false;
    $: successfulSubmission = false;
    $: name = "";
    $: subject = "";
    $: msg ="";
    $: email ="";
    $: phone = ""
    function handlePhone() {
    // Ensure the input is a valid number and convert it to a string
    let rawPhone = phone.replace(/\D/g, ''); // Remove non-numeric characters

    switch (rawPhone.length) {
        case 1:
        case 2:
        case 3:
            phone = `(${rawPhone}`;
            break;
        case 4:
        case 5:
        case 6:
            phone = `(${rawPhone.substring(0, 3)})-${rawPhone.substring(3)}`;
            break;
        case 7:
        case 8:
        case 9:
            phone = `(${rawPhone.substring(0, 3)})-${rawPhone.substring(3, 6)}-${rawPhone.substring(6)}`;
            break;
        default:
            if(rawPhone > 10) {
              break;
            }
            phone = rawPhone;
            break;
    }

    console.log(phone);
    return phone;
}

    $: loadingMsg = "Sending your email...";
    const handleMsg = async (event) => {
      event.preventDefault();
      if (name == "" || subject == "" || msg == "" || email == "" || phone == "" ) {
          console.log("empty lol");
          submitted = true;
      } else {
          loading = true;
          try {
              const response = await emailjs.send("service_8nz8qw1", "template_ymgzikt", {
                  from_name: name,
                  from_email: email,
                  from_phone: phone,
                  subject: subject,
                  message: msg,
              }, "7JQ1DuQZPDpQPlomL");
              console.log(response);
          } catch (error) {
              console.error("Error sending email:", error);
          } finally {
              loading = false;
              loadingMsg = "Email sent!";
              successfulSubmission = true;
          }
      }
  };
</script>

{#if loading}
    <h1>{loadingMsg}</h1>
    <div class="container">
        <div class="loadingspinner">
          <div id="square1"></div>
          <div id="square2"></div>
          <div id="square3"></div>
          <div id="square4"></div>
          <div id="square5"></div>
        </div>
      </div>
{:else if !successfulSubmission}
    {#if name == ""}
        <h1>Hello! Send Me An Email!</h1>
    {:else if name !== ""}
        <h1>Hello {name}! Send Me An Email!</h1>
    {/if}
        <form class="contact-form">
            <label for="name">Full Name</label>
            <input type="text" placeholder="John Doe" name="name" bind:value={name} class={submitted & (name == "") ? 'fault' : ''}/>
            <label for="email">Return Email</label>
            <input type="email" placeholder="JohnDoe@email.com" name="email" bind:value={email} class={submitted & (email == "") ? 'fault' : ''}/>
            <label for="phone">Return Phone</label>
            <input type="tel" placeholder="9998887777" name="phone" bind:value={phone} class={submitted & (phone == "") ? 'fault' : ''} on:keyup={handlePhone} maxlength=14 />
            <label for="subject">Subject Line</label>
            <input type="text" placeholder="Your subject" name="subject" bind:value={subject} class={submitted & (subject == "") ? 'fault' : ''}/>
            <label for="body">Message body</label>
            <textarea placeholder="Your message" name="body" bind:value={msg} class={submitted & (msg == "") ? 'msg fault' : 'msg'}></textarea>
            <button on:click={handleMsg}>Send Message</button>
        </form>
{:else if successfulSubmission}
        <h1>Thank you for reaching out!</h1>
        <h1>We'll get back to you soon!</h1>
{/if}
<style lang="scss">
    @import '$lib/styles.scss';
    h1 {
        margin: auto;
        text-align: center;
        width: fit-content;
        color: $text;
        padding: 1rem;
    }
    .contact-form {
        // background-color: red;
        width: 90%;
        max-width: 50rem;
        height: fit-content;
        margin: auto;
        border: 0.6rem solid $secondary;
        display: grid;
        grid-template-columns: auto;
        text-align: center;
        padding-bottom: 2rem;
    }
    input {
        width: 80%;
        max-width: 30rem;
        font-size: large;
        margin: auto;
        border-bottom: 0.3rem solid transparent;
    }
    label {
        color: $text;
        font-size: xx-large;
        margin: 0.2rem;
    }
    .fault {
      border-bottom: 0.3rem solid red;
    }
    .msg {
        height: 5rem;
        font-size: large;
        // text-align: end;
        align-self: baseline;
        width: 80%;
        max-width: 30rem;
        margin: auto;
    }
    button {
        background-color: $secondary;
        color: $text;
        font-size: xx-large;
        width: 80%;
        max-width: 30rem;
        margin: auto;
        margin-top: 1rem;
        border: 0.3rem solid transparent;
        transition: 0.3s;
        &:hover {
            border: 0.3rem solid $secondary;
            background-color: $main;
            cursor: pointer;
        }
    }

//https://codepen.io/tomad8/pen/VwaPOXR made by Tom Adley, copied from code pen
    .container {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .loadingspinner {
    --square: 26px;
    --offset: 30px;

    --duration: 2.4s;
    --delay: 0.2s;
    --timing-function: ease-in-out;

    --in-duration: 0.4s;
    --in-delay: 0.1s;
    --in-timing-function: ease-out;

    width: calc( 3 * var(--offset) + var(--square));
    height: calc( 2 * var(--offset) + var(--square));
    padding: 0px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 10px;
    margin-bottom: 30px;
    position: relative;
  }

  .loadingspinner div {
    display: inline-block;
    background: $secondary;
    /*background: var(--text-color);*/
    /*box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);*/
    border: none;
    border-radius: 2px;
    width: var(--square);
    height: var(--square);
    position: absolute;
    padding: 0px;
    margin: 0px;
    font-size: 6pt;
    color: black;
  }

  .loadingspinner #square1 {
    left: calc( 0 * var(--offset) );
    top:  calc( 0 * var(--offset) );
    animation: square1 var(--duration) var(--delay) var(--timing-function) infinite,
               squarefadein var(--in-duration) calc(1 * var(--in-delay)) var(--in-timing-function) both;
  }

  .loadingspinner #square2 {
    left: calc( 0 * var(--offset) );
    top:  calc( 1 * var(--offset) );
    animation: square2 var(--duration) var(--delay) var(--timing-function) infinite,
              squarefadein var(--in-duration) calc(1 * var(--in-delay)) var(--in-timing-function) both;
  }
  
  .loadingspinner #square3 {
    left: calc( 1 * var(--offset) );
    top:  calc( 1 * var(--offset) );
    animation: square3 var(--duration) var(--delay) var(--timing-function) infinite,
               squarefadein var(--in-duration) calc(2 * var(--in-delay)) var(--in-timing-function) both;
  }

  .loadingspinner #square4 {
    left: calc( 2 * var(--offset) );
    top:  calc( 1 * var(--offset) );
    animation: square4 var(--duration) var(--delay) var(--timing-function) infinite,
               squarefadein var(--in-duration) calc(3 * var(--in-delay)) var(--in-timing-function) both;
  }

  .loadingspinner #square5 {
    left: calc( 3 * var(--offset) );
    top:  calc( 1 * var(--offset) );
    animation: square5 var(--duration) var(--delay) var(--timing-function) infinite,
               squarefadein var(--in-duration) calc(4 * var(--in-delay)) var(--in-timing-function) both;
  }

  @keyframes square1 {
    0%      {left: calc( 0 * var(--offset) ); top: calc( 0 * var(--offset) ); }
    8.333%  {left: calc( 0 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    100%    {left: calc( 0 * var(--offset) ); top: calc( 1 * var(--offset) ); }
  }

  @keyframes square2 {
    0%      {left: calc( 0 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    8.333%  {left: calc( 0 * var(--offset) ); top: calc( 2 * var(--offset) ); }
    16.67%  {left: calc( 1 * var(--offset) ); top: calc( 2 * var(--offset) ); }
    25.00%  {left: calc( 1 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    83.33%  {left: calc( 1 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    91.67%  {left: calc( 1 * var(--offset) ); top: calc( 0 * var(--offset) ); }
    100%    {left: calc( 0 * var(--offset) ); top: calc( 0 * var(--offset) ); }
  }

  @keyframes square3 {
    0%,100% {left: calc( 1 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    16.67%  {left: calc( 1 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    25.00%  {left: calc( 1 * var(--offset) ); top: calc( 0 * var(--offset) ); }
    33.33%  {left: calc( 2 * var(--offset) ); top: calc( 0 * var(--offset) ); }
    41.67%  {left: calc( 2 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    66.67%  {left: calc( 2 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    75.00%  {left: calc( 2 * var(--offset) ); top: calc( 2 * var(--offset) ); }
    83.33%  {left: calc( 1 * var(--offset) ); top: calc( 2 * var(--offset) ); }
    91.67%  {left: calc( 1 * var(--offset) ); top: calc( 1 * var(--offset) ); }
  }

  @keyframes square4 {
    0%      {left: calc( 2 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    33.33%  {left: calc( 2 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    41.67%  {left: calc( 2 * var(--offset) ); top: calc( 2 * var(--offset) ); }
    50.00%  {left: calc( 3 * var(--offset) ); top: calc( 2 * var(--offset) ); }
    58.33%  {left: calc( 3 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    100%    {left: calc( 3 * var(--offset) ); top: calc( 1 * var(--offset) ); }
  }

  @keyframes square5 {
    0%      {left: calc( 3 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    50.00%  {left: calc( 3 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    58.33%  {left: calc( 3 * var(--offset) ); top: calc( 0 * var(--offset) ); }
    66.67%  {left: calc( 2 * var(--offset) ); top: calc( 0 * var(--offset) ); }
    75.00%  {left: calc( 2 * var(--offset) ); top: calc( 1 * var(--offset) ); }
    100%    {left: calc( 2 * var(--offset) ); top: calc( 1 * var(--offset) ); }
  }

  @keyframes squarefadein {
    0%      {transform: scale(0.75); opacity: 0.0;}
    100%    {transform: scale(1.0); opacity: 1.0;}
  }
</style>