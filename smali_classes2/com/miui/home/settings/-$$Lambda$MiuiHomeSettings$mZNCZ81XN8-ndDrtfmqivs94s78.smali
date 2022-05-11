.class public final synthetic Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$mZNCZ81XN8-ndDrtfmqivs94s78;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$mZNCZ81XN8-ndDrtfmqivs94s78;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$mZNCZ81XN8-ndDrtfmqivs94s78;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$setUpAnimationRateValue$11(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
