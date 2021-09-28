.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/FloatingIconView;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/FloatingIconView;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;->f$0:Lcom/miui/home/recents/views/FloatingIconView;

    iput-object p2, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;->f$0:Lcom/miui/home/recents/views/FloatingIconView;

    iget-object v1, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/views/FloatingIconView;->lambda$notifyBackHome$1(Lcom/miui/home/recents/views/FloatingIconView;Ljava/lang/String;F)V

    return-void
.end method
