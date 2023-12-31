.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$BVJr0Zqserit_X_RDr-7vdPTXyw;
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

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$BVJr0Zqserit_X_RDr-7vdPTXyw;->f$0:Lcom/miui/home/recents/views/FloatingIconView;

    iput-object p2, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$BVJr0Zqserit_X_RDr-7vdPTXyw;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$BVJr0Zqserit_X_RDr-7vdPTXyw;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$BVJr0Zqserit_X_RDr-7vdPTXyw;->f$0:Lcom/miui/home/recents/views/FloatingIconView;

    iget-object v1, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$BVJr0Zqserit_X_RDr-7vdPTXyw;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$BVJr0Zqserit_X_RDr-7vdPTXyw;->f$2:F

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/views/FloatingIconView;->lambda$notifyBackHome$2$FloatingIconView(Ljava/lang/String;F)V

    return-void
.end method
