.class public final synthetic Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$UnhuqcSkzwg6p7tP70_gSsoN9YQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$UnhuqcSkzwg6p7tP70_gSsoN9YQ;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$UnhuqcSkzwg6p7tP70_gSsoN9YQ;->f$0:Lcom/miui/home/settings/MiuiHomeSettings;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$setUpAnimationRateValue$12(Lcom/miui/home/settings/MiuiHomeSettings;Ljava/lang/String;)V

    return-void
.end method
