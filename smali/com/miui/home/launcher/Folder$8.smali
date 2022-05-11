.class Lcom/miui/home/launcher/Folder$8;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Folder;->showRecommendAppsSwitch(ZZ)V
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

    .line 752
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$8;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 755
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$8;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreenView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Folder$8;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$2000(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/NonOverlapLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 756
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$8;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->invalidate()V

    return-void
.end method
