.class public abstract Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;
.super Ljava/lang/Object;
.source "TopMenuContainerAnim.java"


# instance fields
.field protected mImageViewAnimEndColor:I

.field protected mImageViewAnimStartColor:I

.field protected mTextViewAnimEndColor:I

.field protected mTextViewAnimStartColor:I

.field protected mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainer;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    return-void
.end method


# virtual methods
.method protected changeColor(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 1

    .line 21
    invoke-virtual {p2}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getTopMenuColor()Lcom/miui/home/launcher/multiselect/TopMenuColor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getImageViewColor()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mImageViewAnimEndColor:I

    .line 22
    invoke-virtual {p2}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getTopMenuColor()Lcom/miui/home/launcher/multiselect/TopMenuColor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getTextViewColor()I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTextViewAnimEndColor:I

    .line 23
    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getTopMenuColor()Lcom/miui/home/launcher/multiselect/TopMenuColor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getImageViewColor()I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mImageViewAnimStartColor:I

    .line 24
    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getTopMenuColor()Lcom/miui/home/launcher/multiselect/TopMenuColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/TopMenuColor;->getTextViewColor()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTextViewAnimStartColor:I

    return-void
.end method

.method public abstract changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
.end method

.method public changeStateWithoutAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->changeColor(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isGoneState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
.end method
