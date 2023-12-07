.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$14$59vfbym7AkpyjM95z_8wWyZPFv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView$14;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView$14;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$59vfbym7AkpyjM95z_8wWyZPFv4;->f$0:Lcom/miui/home/recents/NavStubView$14;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$59vfbym7AkpyjM95z_8wWyZPFv4;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$59vfbym7AkpyjM95z_8wWyZPFv4;->f$0:Lcom/miui/home/recents/NavStubView$14;

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$59vfbym7AkpyjM95z_8wWyZPFv4;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/NavStubView$14;->lambda$onAnimationStart$0$NavStubView$14(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method
