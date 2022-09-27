.class Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TopMenuContainerGoogleAnim.java"


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

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$2;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$2;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    iget-object p1, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isGoneState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim$2;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;

    iget-object p1, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerGoogleAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setVisibility(I)V

    :cond_0
    return-void
.end method
