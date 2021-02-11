.class Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "TopMenuContainerFolmeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->createAnimConfig(FF)Lmiuix/animation/base/AnimConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

.field final synthetic val$newAlpha:F

.field final synthetic val$oldAlpha:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;FF)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iput p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$oldAlpha:F

    iput p3, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$newAlpha:F

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FZ)V
    .locals 6

    .line 65
    invoke-virtual {p2}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "autoAlpha"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$oldAlpha:F

    sub-float/2addr p3, p1

    iget p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$newAlpha:F

    sub-float/2addr p2, p1

    div-float v1, p3, p2

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget-object v0, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget p2, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mImageViewAnimStartColor:I

    .line 68
    invoke-static {p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$000(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I

    move-result v2

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget p2, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mImageViewAnimEndColor:I

    invoke-static {p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$000(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I

    move-result v3

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget p2, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTextViewAnimStartColor:I

    .line 69
    invoke-static {p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$000(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I

    move-result v4

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget p2, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTextViewAnimEndColor:I

    invoke-static {p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$000(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I

    move-result v5

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(FIIII)V

    :cond_0
    return-void
.end method
