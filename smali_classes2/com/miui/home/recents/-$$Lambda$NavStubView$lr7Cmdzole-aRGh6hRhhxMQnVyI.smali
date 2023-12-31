.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$2:F

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$2:F

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$3:I

    iput p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$2:F

    iget v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$3:I

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lr7Cmdzole-aRGh6hRhhxMQnVyI;->f$4:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/miui/home/recents/NavStubView;->lambda$startHalfAppToHomeAnim$35$NavStubView(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FII)V

    return-void
.end method
