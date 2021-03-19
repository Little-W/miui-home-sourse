.class Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper$Holder;
.super Ljava/lang/Object;
.source "MIUIAutoInstallsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;-><init>(Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper$1;)V

    sput-object v0, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper$Holder;->sInstance:Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper$Holder;->sInstance:Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    return-object v0
.end method
