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
    .locals 2

    .line 29
    new-instance v0, Lcom/miui/home/launcher/common/PreferenceUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;-><init>(Lcom/miui/home/launcher/common/PreferenceUtils$1;)V

    sput-object v0, Lcom/miui/home/launcher/common/PreferenceUtils$Holder;->sInstance:Lcom/miui/home/launcher/common/PreferenceUtils;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/common/PreferenceUtils;
    .locals 1

    .line 28
    sget-object v0, Lcom/miui/home/launcher/common/PreferenceUtils$Holder;->sInstance:Lcom/miui/home/launcher/common/PreferenceUtils;

    return-object v0
.end method
