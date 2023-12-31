.class Lcom/miui/home/launcher/Folder$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


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

    .line 954
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$9;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$9;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p0}, Lcom/miui/home/launcher/Folder;->access$2500(Lcom/miui/home/launcher/Folder;)Lcom/miui/home/launcher/NonOverlapLinearLayout;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->setVisibility(I)V

    return-void
.end method
