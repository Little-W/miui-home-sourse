.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$U4_qjlEV2_TmS-pYP-qOokhfDTM;
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

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$U4_qjlEV2_TmS-pYP-qOokhfDTM;->f$0:Lcom/miui/home/recents/NavStubView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$U4_qjlEV2_TmS-pYP-qOokhfDTM;->f$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->lambda$updateTopWindowCrop$53(Lcom/miui/home/recents/NavStubView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
