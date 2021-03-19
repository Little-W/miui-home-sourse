.class public Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;
.super Landroidx/room/migration/Migration;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescheduleMigration"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 133
    invoke-direct {p0, p2, p3}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 134
    iput-object p1, p0, Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5

    .line 139
    iget v0, p0, Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;->endVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const/4 v3, 0x2

    .line 140
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "reschedule_needed"

    aput-object v4, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-interface {p1, v0, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Landroidx/work/impl/WorkDatabaseMigrations$RescheduleMigration;->mContext:Landroid/content/Context;

    const-string v0, "androidx.work.util.preferences"

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 147
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "reschedule_needed"

    .line 148
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
