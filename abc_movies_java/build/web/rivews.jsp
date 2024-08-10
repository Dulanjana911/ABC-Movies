<%-- 
    Document   : rivews
    Created on : 15-Jan-2023, 20:42:37
    Author     : dulan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/reviews.css">
    <title>Reviews</title>
</head>
<body>

    <div class="container">
        <div class="feedback__header" id="feedback-header">
            <div class="left__header">
                <h3><span id="feedbacks">26</span> Feedbacks</h3>
            </div>

            <div class="right__header">
                <button class="feedback__button" id="add-feedback-button">
                    + Add Feedback
                </button>
            </div>
        </div>

        <div class="feedback__list" id="feedback-list">
           <div class="feedback__item item-animation">
            <div class="feedback__details">

              <!--This is my review as custom review. If you don't want, remove it-->

                <h4 class="feedback__name" id="feedback-name">Sahan Kaveesha</h4>
                <h5 class="feedback__title" id="feedback-title">Best Site Ever</h5>
                <p class="feedback__text" id="feedback-text">This is the super cinema site for all. Excellent customer service and so many others. 
                I really enjoyed my movie. Best of Luck! Highly recommended this site!!! </p>
            </div>

            <div class="buttons">
                <button class="button" id="Fixed-edit-button" onclick="alert('Cannot edit this because this is a default review.')" >Edit</button>
                <button class="button" id="Fixed-delete-button" onclick="alert('Cannot delete this because this is a default review.')" >Delete</button>
            </div>
           </div>
        </div>

        <!--Fixed button css style-->
<style>
	
    .button {
    outline: none;
    display: inline;
    padding: 12px 24px;
    border-radius: 10px;
    transition: all 0.3s ease 0s;
    font-weight: 600;
    font-size: 14px;
    line-height: 20px;
    color: rgb(242, 244, 254);
    cursor: pointer;
    border: medium none;
    background: rgb(173, 31, 234) none repeat scroll 0% 0%;  
    margin: 4px 2px;
    }
        
    .button:hover{
    background: rgb(199, 90, 246) none repeat scroll 0% 0%;   
    transform: translateX(0rem) translateY(-0.125rem);
    }
            
    </style>

        <!-- Adding a modal to add feedback -->
        <div class="modal" id="add-feedback-modal">
            <div class="modal__content">
                <div class="modal__header-left">
                    <h1>Add Feedback</h1>
                </div>

                <div class="modal__body">
                    <form id="add-feedback-form" class="form">
                        <div class="form__group">
                            <label for="name">Your Name</label>
                            <input type="text" autocomplete="off" name="name" id="name" class="form__input">
                        </div>
                        <div class="form__group">
                            <label for="title">Feedback Title</label>
                            <input type="text" name="title" id="title" class="form__input">
                        </div>
                        <div class="form__group">
                            <label for="text">Feedback Detail</label>
                            <textarea name="text" id="text" class="form__input"></textarea>
                        </div>
                    </form>
                </div>

                <div class="modal__footer">
                    <button class="modal__button feedback__button" id="add-button">
                        Add feedback
                    </button>
                    <button class="modal__button feedback__button modal__button_cancel" id="cancel-button">
                        Cancel
                    </button>
                </div>
            </div>
        </div>

    </div>
    <script src="./Review script.js"></script>
</body>
</html>