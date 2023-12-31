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

.field private final priorityStrategy:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->packageName:Ljava/lang/String;

    .line 447
    iput p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->optionFlags:I

    const/4 p1, 0x0

    .line 448
    iput p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->priorityStrategy:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->packageName:Ljava/lang/String;

    .line 453
    iput p2, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->optionFlags:I

    .line 454
    iput p3, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->priorityStrategy:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)Ljava/lang/String;
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I
    .locals 0

    .line 440
    iget p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->priorityStrategy:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)I
    .locals 0

    .line 440
    iget p0, p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;->optionFlags:I

    return p0
.end method
