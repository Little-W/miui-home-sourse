.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$FolderCling$FvY5ygNXrIHsVJeBYcMK7fW0XEc;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderCling$FvY5ygNXrIHsVJeBYcMK7fW0XEc;->f$0:Lcom/miui/home/launcher/FolderCling;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$FolderCling$FvY5ygNXrIHsVJeBYcMK7fW0XEc;->f$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/FolderCling;->lambda$startFolderEnterExitEditModeAnimator$115(Lcom/miui/home/launcher/FolderCling;Landroid/animation/ValueAnimator;)V

    return-void
.end method
