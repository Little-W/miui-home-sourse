.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$O2BgU8ZvgR_9ImFu-Q4_thJRz5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$O2BgU8ZvgR_9ImFu-Q4_thJRz5Q;->f$0:Lcom/miui/home/recents/NavStubView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$O2BgU8ZvgR_9ImFu-Q4_thJRz5Q;->f$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->lambda$updateTopWindowCrop$52(Lcom/miui/home/recents/NavStubView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
