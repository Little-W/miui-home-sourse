.class public Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
.super Ljava/lang/Object;
.source "LauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientOptions"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.googlequicksearchbox"

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->b:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a:I

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->c:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->d:Z

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.googlequicksearchbox"

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->b:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p1, p2

    if-eq v0, p3, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    const/4 p2, 0x4

    :goto_1
    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->c:Landroid/graphics/Bitmap;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->a:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static createForSharedOverlay(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;->d:Z

    return p0
.end method
