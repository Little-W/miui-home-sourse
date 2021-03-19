.class Lcom/miui/home/launcher/Folder$5;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Folder;
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

    .line 278
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(F)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object v0, v0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1400(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v1}, Lcom/miui/home/launcher/Folder;->access$1500(Lcom/miui/home/launcher/Folder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1600(Lcom/miui/home/launcher/Folder;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v1}, Lcom/miui/home/launcher/Folder;->access$1600(Lcom/miui/home/launcher/Folder;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v1}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 286
    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Folder;->setScaleX(F)V

    .line 287
    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Folder;->setScaleY(F)V

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1500(Lcom/miui/home/launcher/Folder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v1}, Lcom/miui/home/launcher/Folder;->access$1700(Lcom/miui/home/launcher/Folder;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr v2, p1

    mul-float/2addr v0, v2

    .line 289
    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v1}, Lcom/miui/home/launcher/Folder;->access$1500(Lcom/miui/home/launcher/Folder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v3}, Lcom/miui/home/launcher/Folder;->access$1800(Lcom/miui/home/launcher/Folder;)F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Folder;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object v3, v3, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 290
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    .line 291
    iget-object v2, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/Folder;->setTranslationX(F)V

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Folder;->setTranslationY(F)V

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1000(Lcom/miui/home/launcher/Folder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1900(Lcom/miui/home/launcher/Folder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Folder;->access$1100(Lcom/miui/home/launcher/Folder;F)V

    .line 296
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setupOutOfPreviewContent(F)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setBackgroundAlpha(F)V

    const v0, 0x3e99999a    # 0.3f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 299
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderGridView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$900(Lcom/miui/home/launcher/Folder;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 300
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderGridView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$700(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method
