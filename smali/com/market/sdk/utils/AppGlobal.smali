.class public Lcom/market/sdk/utils/AppGlobal;
.super Ljava/lang/Object;
.source "AppGlobal.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.app.ActivityThread"

    .line 15
    invoke-static {v0}, Lcom/market/sdk/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const-string v2, "()Landroid/app/Application;"

    const/4 v3, 0x0

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v0, v1, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/market/sdk/utils/AppGlobal;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 33
    sget-object v0, Lcom/market/sdk/utils/AppGlobal;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 21
    sget-object v0, Lcom/market/sdk/utils/AppGlobal;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/market/sdk/utils/AppGlobal;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/market/sdk/utils/AppGlobal;->sContext:Landroid/content/Context;

    return-void
.end method
