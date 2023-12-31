.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$13$LerL-zAuQorEU0w2ALui-bmWYSs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView$13;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView$13;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$LerL-zAuQorEU0w2ALui-bmWYSs;->f$0:Lcom/miui/home/recents/NavStubView$13;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$LerL-zAuQorEU0w2ALui-bmWYSs;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$LerL-zAuQorEU0w2ALui-bmWYSs;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$LerL-zAuQorEU0w2ALui-bmWYSs;->f$0:Lcom/miui/home/recents/NavStubView$13;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$LerL-zAuQorEU0w2ALui-bmWYSs;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$13$LerL-zAuQorEU0w2ALui-bmWYSs;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/NavStubView$13;->lambda$onAnimationEnd$2$NavStubView$13(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;)V

    return-void
.end method
