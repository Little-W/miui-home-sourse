.class public Lcom/miui/home/launcher/common/SQLiteTransaction;
.super Ljava/lang/Object;
.source "SQLiteTransaction.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/home/launcher/common/SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/common/SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public commit()V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/common/SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
