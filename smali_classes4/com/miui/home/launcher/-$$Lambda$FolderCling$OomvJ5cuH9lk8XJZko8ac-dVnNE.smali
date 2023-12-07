.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$FolderCling$OomvJ5cuH9lk8XJZko8ac-dVnNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderCling$OomvJ5cuH9lk8XJZko8ac-dVnNE;->f$0:Lcom/miui/home/launcher/FolderCling;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$FolderCling$OomvJ5cuH9lk8XJZko8ac-dVnNE;->f$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->lambda$startFolderEnterExitEditModeAnimator$1$FolderCling(Landroid/animation/ValueAnimator;)V

    return-void
.end method
