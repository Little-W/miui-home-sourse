.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$3_TEpw1eQrulRLgRs4HVCdqAvQg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$3_TEpw1eQrulRLgRs4HVCdqAvQg;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$3_TEpw1eQrulRLgRs4HVCdqAvQg;->f$1:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$3_TEpw1eQrulRLgRs4HVCdqAvQg;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$3_TEpw1eQrulRLgRs4HVCdqAvQg;->f$1:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToApp$50$NavStubView(Landroid/graphics/RectF;)V

    return-void
.end method
