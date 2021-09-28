.class public Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
.super Ljava/lang/Object;
.source "LauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/overlay/client/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientOptions"
.end annotation


# instance fields
.field private final optionFlags:I

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->packageName:Ljava/lang/String;

    .line 439
    iput p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->optionFlags:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I
    .locals 0

    .line 433
    iget p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->optionFlags:I

    return p0
.end method
