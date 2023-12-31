.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$q-9VB7eHFqjDmt6ItcKvkIqq8Hw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$q-9VB7eHFqjDmt6ItcKvkIqq8Hw;->f$0:Lcom/miui/home/launcher/Workspace;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$q-9VB7eHFqjDmt6ItcKvkIqq8Hw;->f$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->updateNormalEditProgress(F)V

    return-void
.end method
