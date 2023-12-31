.class Lcom/miui/home/launcher/common/PreferenceUtils$Holder;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/PreferenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/common/PreferenceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/miui/home/launcher/common/PreferenceUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>(Lcom/miui/home/launcher/common/PreferenceUtils$1;)V

    sput-object v0, Lcom/miui/home/launcher/common/PreferenceUtils$Holder;->sInstance:Lcom/miui/home/launcher/common/PreferenceUtils;

    .line 40
    sget-object v0, Lcom/miui/home/launcher/common/PreferenceUtils$Holder;->sInstance:Lcom/miui/home/launcher/common/PreferenceUtils;

    new-instance v0, Lcom/miui/home/launcher/common/PreferenceUtils;

    const-string v2, "launcher_sharedpreference_private"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>(Ljava/lang/String;Lcom/miui/home/launcher/common/PreferenceUtils$1;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->access$102(Lcom/miui/home/launcher/common/PreferenceUtils;)Lcom/miui/home/launcher/common/PreferenceUtils;

    return-void
.end method

.method static synthetic access$300()Lcom/miui/home/launcher/common/PreferenceUtils;
    .locals 1

    .line 37
    sget-object v0, Lcom/miui/home/launcher/common/PreferenceUtils$Holder;->sInstance:Lcom/miui/home/launcher/common/PreferenceUtils;

    return-object v0
.end method
