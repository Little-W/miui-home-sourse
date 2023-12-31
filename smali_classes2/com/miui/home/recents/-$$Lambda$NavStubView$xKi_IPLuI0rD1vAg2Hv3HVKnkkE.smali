.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$xKi_IPLuI0rD1vAg2Hv3HVKnkkE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xKi_IPLuI0rD1vAg2Hv3HVKnkkE;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xKi_IPLuI0rD1vAg2Hv3HVKnkkE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xKi_IPLuI0rD1vAg2Hv3HVKnkkE;->f$0:Lcom/miui/home/recents/NavStubView;

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xKi_IPLuI0rD1vAg2Hv3HVKnkkE;->f$1:I

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/NavStubView;->lambda$onSoscStateChanged$9$NavStubView(I)V

    return-void
.end method
