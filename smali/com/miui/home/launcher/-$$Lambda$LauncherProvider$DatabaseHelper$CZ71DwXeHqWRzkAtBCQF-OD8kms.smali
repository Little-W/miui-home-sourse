.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$CZ71DwXeHqWRzkAtBCQF-OD8kms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

.field private final synthetic f$1:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$CZ71DwXeHqWRzkAtBCQF-OD8kms;->f$0:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$CZ71DwXeHqWRzkAtBCQF-OD8kms;->f$1:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$CZ71DwXeHqWRzkAtBCQF-OD8kms;->f$0:Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$DatabaseHelper$CZ71DwXeHqWRzkAtBCQF-OD8kms;->f$1:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->lambda$onUpgrade$175(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
