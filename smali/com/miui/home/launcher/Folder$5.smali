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

    .line 335
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setFolderBorderLineAlpha(F)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(F)V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object v0, v0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1300(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v1}, Lcom/miui/home/launcher/Folder;->access$1400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1500(Lcom/miui/home/launcher/Folder;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v1}, Lcom/miui/home/launcher/Folder;->access$1500(Lcom/miui/home/launcher/Folder;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v1}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 343
    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Folder;->setScaleX(F)V

    .line 344
    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Folder;->setScaleY(F)V

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v1}, Lcom/miui/home/launcher/Folder;->access$1600(Lcom/miui/home/launcher/Folder;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    .line 346
    iget-object v3, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v3}, Lcom/miui/home/launcher/Folder;->access$1400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v4}, Lcom/miui/home/launcher/Folder;->access$1700(Lcom/miui/home/launcher/Folder;)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Folder;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object v4, v4, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 347
    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderCling;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    .line 348
    iget-object v1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Folder;->setTranslationX(F)V

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Folder;->setTranslationY(F)V

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1000(Lcom/miui/home/launcher/Folder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1800(Lcom/miui/home/launcher/Folder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setupOutOfPreviewContent(F)V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setBackgroundAlpha(F)V

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$900(Lcom/miui/home/launcher/Folder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$1900(Lcom/miui/home/launcher/Folder;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    sub-float/2addr v0, v2

    const/4 v1, 0x0

    .line 357
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 356
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder$5;->setFolderBorderLineAlpha(F)V

    :cond_2
    const v0, 0x3e99999a    # 0.3f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    .line 359
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderGridView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$900(Lcom/miui/home/launcher/Folder;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 360
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderGridView;->setVisibility(I)V

    .line 361
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$700(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method
