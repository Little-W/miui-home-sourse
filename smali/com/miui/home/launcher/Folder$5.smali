.class Lcom/miui/home/launcher/Folder$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


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

    .line 392
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 411
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1000(Lcom/miui/home/launcher/Folder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 412
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1200(Lcom/miui/home/launcher/Folder;)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1300(Lcom/miui/home/launcher/Folder;)V

    .line 416
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderGridView;->setVisibility(I)V

    .line 417
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$800(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1400(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 419
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1400(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderIcon;->setAlpha(F)V

    .line 421
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Folder;->access$900(Lcom/miui/home/launcher/Folder;Z)V

    .line 422
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1400(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isWorkFolder()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 423
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "had_show_work_profile_folder"

    invoke-static {p1, p0, v0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->showWorkProfileTipsOnDesktop(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 395
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$700(Lcom/miui/home/launcher/Folder;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Folder;->access$602(Lcom/miui/home/launcher/Folder;F)F

    .line 396
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$800(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$800(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 398
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$800(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 399
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/miui/home/launcher/Folder;->access$900(Lcom/miui/home/launcher/Folder;Z)V

    .line 400
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1000(Lcom/miui/home/launcher/Folder;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 401
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1100(Lcom/miui/home/launcher/Folder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->setupContentAlpha(F)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$5;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setupContentAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method
