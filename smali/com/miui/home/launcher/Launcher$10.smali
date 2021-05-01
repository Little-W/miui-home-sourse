.class Lcom/miui/home/launcher/Launcher$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 1959
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1971
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$1802(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 1972
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getOpenCloseAnimatorListenerAdapter()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1973
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/util/ViewCompat;->notifyChildOfDragStart(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1962
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$1802(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 1963
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$1902(Lcom/miui/home/launcher/Launcher;F)F

    .line 1964
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    sub-float v1, v3, v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$2102(Lcom/miui/home/launcher/Launcher;F)F

    .line 1965
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v0, v3}, Lcom/miui/home/launcher/Launcher;->access$2202(Lcom/miui/home/launcher/Launcher;F)F

    .line 1966
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getOpenCloseAnimatorListenerAdapter()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
