.class Lcom/miui/home/launcher/Launcher$11;
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

    .line 2171
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2174
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setAlpha(F)V

    .line 2175
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setTranslationY(F)V

    .line 2176
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->setAlpha(F)V

    .line 2177
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/EditingEntryThumbnailView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setAlpha(F)V

    .line 2178
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setVisibility(I)V

    .line 2179
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->onShow(Z)V

    return-void
.end method
