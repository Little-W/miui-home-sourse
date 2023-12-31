.class Lcom/miui/home/launcher/CategorySettingHelper$Holder;
.super Ljava/lang/Object;
.source "CategorySettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CategorySettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/CategorySettingHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/miui/home/launcher/CategorySettingHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CategorySettingHelper;-><init>(Lcom/miui/home/launcher/CategorySettingHelper$1;)V

    sput-object v0, Lcom/miui/home/launcher/CategorySettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/CategorySettingHelper;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/CategorySettingHelper;
    .locals 1

    .line 16
    sget-object v0, Lcom/miui/home/launcher/CategorySettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/CategorySettingHelper;

    return-object v0
.end method
