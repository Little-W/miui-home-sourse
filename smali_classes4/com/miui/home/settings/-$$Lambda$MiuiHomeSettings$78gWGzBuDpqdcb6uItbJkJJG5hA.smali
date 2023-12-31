.class public final synthetic Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$78gWGzBuDpqdcb6uItbJkJJG5hA;
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

    iput-object p1, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$78gWGzBuDpqdcb6uItbJkJJG5hA;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$78gWGzBuDpqdcb6uItbJkJJG5hA;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$onCreatePreferences$0$MiuiHomeSettings(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
