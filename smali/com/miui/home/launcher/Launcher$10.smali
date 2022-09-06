.class Lcom/miui/home/launcher/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->setupWidgetsPreviewPage()V
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

    .line 2076
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 2084
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2085
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setVisibility(I)V

    .line 2087
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->onExitAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 2079
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$10;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->onExitAnimationStart()V

    return-void
.end method
