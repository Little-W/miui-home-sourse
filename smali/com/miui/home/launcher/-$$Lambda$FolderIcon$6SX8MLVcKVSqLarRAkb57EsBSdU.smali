.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$FolderIcon$6SX8MLVcKVSqLarRAkb57EsBSdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$6SX8MLVcKVSqLarRAkb57EsBSdU;->f$0:Lcom/miui/home/launcher/FolderIcon;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$6SX8MLVcKVSqLarRAkb57EsBSdU;->f$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->lambda$deleteSelf$1$FolderIcon(Landroid/animation/ValueAnimator;)V

    return-void
.end method
