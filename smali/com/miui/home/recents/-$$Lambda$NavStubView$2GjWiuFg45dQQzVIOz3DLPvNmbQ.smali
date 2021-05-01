.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$2GjWiuFg45dQQzVIOz3DLPvNmbQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$2GjWiuFg45dQQzVIOz3DLPvNmbQ;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$2GjWiuFg45dQQzVIOz3DLPvNmbQ;->f$1:F

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$2GjWiuFg45dQQzVIOz3DLPvNmbQ;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$2GjWiuFg45dQQzVIOz3DLPvNmbQ;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$2GjWiuFg45dQQzVIOz3DLPvNmbQ;->f$1:F

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$2GjWiuFg45dQQzVIOz3DLPvNmbQ;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->lambda$changeAlphaScaleForFsGesture$235(Lcom/miui/home/recents/NavStubView;FF)V

    return-void
.end method
