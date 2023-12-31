.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$AppToRecentsUpdateListener$7KdVxFrLX72ROnWjeQVYfUPzCR0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$AppToRecentsUpdateListener$7KdVxFrLX72ROnWjeQVYfUPzCR0;->f$0:Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$AppToRecentsUpdateListener$7KdVxFrLX72ROnWjeQVYfUPzCR0;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$AppToRecentsUpdateListener$7KdVxFrLX72ROnWjeQVYfUPzCR0;->f$0:Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$AppToRecentsUpdateListener$7KdVxFrLX72ROnWjeQVYfUPzCR0;->f$1:F

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/NavStubView$AppToRecentsUpdateListener;->lambda$onUpdate$0$NavStubView$AppToRecentsUpdateListener(F)V

    return-void
.end method
