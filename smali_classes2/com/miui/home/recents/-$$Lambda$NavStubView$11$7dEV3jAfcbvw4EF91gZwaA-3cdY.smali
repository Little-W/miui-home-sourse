.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$11$7dEV3jAfcbvw4EF91gZwaA-3cdY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView$11;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$7dEV3jAfcbvw4EF91gZwaA-3cdY;->f$0:Lcom/miui/home/recents/NavStubView$11;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$7dEV3jAfcbvw4EF91gZwaA-3cdY;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$7dEV3jAfcbvw4EF91gZwaA-3cdY;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$7dEV3jAfcbvw4EF91gZwaA-3cdY;->f$0:Lcom/miui/home/recents/NavStubView$11;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$7dEV3jAfcbvw4EF91gZwaA-3cdY;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$7dEV3jAfcbvw4EF91gZwaA-3cdY;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/NavStubView$11;->lambda$onAnimationEnd$2(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;)V

    return-void
.end method
