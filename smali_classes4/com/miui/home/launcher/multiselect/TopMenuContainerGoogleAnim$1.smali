.class Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;
.super Ljava/lang/Object;
.source "TopMenuContainerGoogleAnim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    iget-object v1, v0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    iget v3, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mImageViewAnimStartColor:I

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    iget v4, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mImageViewAnimEndColor:I

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    iget v5, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTextViewAnimStartColor:I

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    iget v6, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTextViewAnimEndColor:I

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(FIIII)V

    return-void
.end method
