.class Lcom/miui/home/launcher/common/LauncherIconSizeProvider$Holder;
.super Ljava/lang/Object;
.source "LauncherIconSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/LauncherIconSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;-><init>(Lcom/miui/home/launcher/common/LauncherIconSizeProvider$1;)V

    sput-object v0, Lcom/miui/home/launcher/common/LauncherIconSizeProvider$Holder;->sInstance:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;
    .locals 1

    .line 10
    sget-object v0, Lcom/miui/home/launcher/common/LauncherIconSizeProvider$Holder;->sInstance:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    return-object v0
.end method
