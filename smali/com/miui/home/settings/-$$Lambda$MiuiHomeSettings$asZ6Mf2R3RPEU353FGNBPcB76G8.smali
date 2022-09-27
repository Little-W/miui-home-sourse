.class public final synthetic Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$asZ6Mf2R3RPEU353FGNBPcB76G8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/settings/MiuiHomeSettings;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$asZ6Mf2R3RPEU353FGNBPcB76G8;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iput-object p2, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$asZ6Mf2R3RPEU353FGNBPcB76G8;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$asZ6Mf2R3RPEU353FGNBPcB76G8;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object v1, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$asZ6Mf2R3RPEU353FGNBPcB76G8;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$onPreferenceChange$11(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/Object;)V

    return-void
.end method
