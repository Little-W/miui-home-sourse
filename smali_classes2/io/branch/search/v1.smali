.class public final enum Lio/branch/search/v1;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/v1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/v1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/branch/search/v1;

.field public static final enum b:Lio/branch/search/v1;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final synthetic f:[Lio/branch/search/v1;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/branch/search/v1;

    const/4 v1, 0x0

    const-string v2, "BLUE"

    invoke-direct {v0, v2, v1}, Lio/branch/search/v1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/search/v1;->a:Lio/branch/search/v1;

    new-instance v2, Lio/branch/search/v1;

    const/4 v3, 0x1

    const-string v4, "GREEN"

    invoke-direct {v2, v4, v3}, Lio/branch/search/v1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/branch/search/v1;->b:Lio/branch/search/v1;

    const/4 v4, 0x2

    new-array v5, v4, [Lio/branch/search/v1;

    aput-object v0, v5, v1

    aput-object v2, v5, v3

    sput-object v5, Lio/branch/search/v1;->f:[Lio/branch/search/v1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    const-string v0, "BNCRAW_(%s|%s)_(.*)$"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/branch/search/v1;->c:Ljava/util/regex/Pattern;

    const-string v0, "^BranchSdkRoomDatabase.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/branch/search/v1;->d:Ljava/util/regex/Pattern;

    const-string v0, "^androidx.work.workdb.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/branch/search/v1;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/v1$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lio/branch/search/v1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/branch/search/v1;->valueOf(Ljava/lang/String;)Lio/branch/search/v1;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lio/branch/search/v1$b;

    invoke-direct {v4, v1, v3, v2}, Lio/branch/search/v1$b;-><init>(Ljava/lang/String;Lio/branch/search/v1;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lio/branch/search/v1;->c:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Z)V
    .locals 9

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lio/branch/search/v1;->a(Landroid/content/Context;Z)[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "BRANCH_BlueGreen.loadDatabaseDiagnostics"

    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "name"

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "full_name"

    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "bytes"

    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {v3, v4}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_4
    const-string p1, "databases"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p1, "exception parsing \"databases\"."

    invoke-static {v3, p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static a(Landroid/content/Context;Z)[Ljava/io/File;
    .locals 1

    const-string v0, "anything"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance v0, Lio/branch/search/v1$a;

    invoke-direct {v0, p1}, Lio/branch/search/v1$a;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lio/branch/search/v1;->d:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static synthetic c()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lio/branch/search/v1;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/v1;
    .locals 1

    const-class v0, Lio/branch/search/v1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/v1;

    return-object p0
.end method

.method public static values()[Lio/branch/search/v1;
    .locals 1

    sget-object v0, Lio/branch/search/v1;->f:[Lio/branch/search/v1;

    invoke-virtual {v0}, [Lio/branch/search/v1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/v1;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BNCRAW_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
