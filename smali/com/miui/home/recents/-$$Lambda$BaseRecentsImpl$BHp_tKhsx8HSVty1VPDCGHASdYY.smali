.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$BHp_tKhsx8HSVty1VPDCGHASdYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$BHp_tKhsx8HSVty1VPDCGHASdYY;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$BHp_tKhsx8HSVty1VPDCGHASdYY;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$showNavStubView$4(Lcom/miui/home/recents/BaseRecentsImpl;)V

    return-void
.end method
