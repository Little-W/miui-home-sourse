.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$Utilities$M7kkc46xFp5Sn_vpoITCNOEtpm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$M7kkc46xFp5Sn_vpoITCNOEtpm8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$M7kkc46xFp5Sn_vpoITCNOEtpm8;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/Utilities;->lambda$asyncGetIncompatibleDialogIntent$148(Ljava/lang/String;Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method