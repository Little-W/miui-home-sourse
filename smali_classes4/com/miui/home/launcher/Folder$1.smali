.class Lcom/miui/home/launcher/Folder$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$1;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 325
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$1;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$000(Lcom/miui/home/launcher/Folder;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    sub-float p1, v1, p1

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$1;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object v0, v0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 330
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$1;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$100(Lcom/miui/home/launcher/Folder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$1;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object v0, v0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$1;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->setAlpha(F)V

    :cond_1
    return-void
.end method
