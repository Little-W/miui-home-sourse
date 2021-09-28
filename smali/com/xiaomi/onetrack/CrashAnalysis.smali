.class public Lcom/xiaomi/onetrack/CrashAnalysis;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;
    }
.end annotation


# static fields
.field public static final ANR_CRASH:Ljava/lang/String; = "anr"

.field public static final JAVA_CRASH:Ljava/lang/String; = "java"

.field public static final NATIVE_CRASH:Ljava/lang/String; = "native"

.field private static final a:Ljava/lang/String; = "CrashAnalysis"

.field private static final b:Ljava/lang/String; = "com.xiaomi.digest.DigestUtil"

.field private static final c:Ljava/lang/String; = "calcuateJavaDigest"

.field private static final d:Ljava/lang/String; = "/sdcard/tombstone"

.field private static final e:Ljava/lang/String; = "backtrace feature id:\n\t"

.field private static final f:Ljava/lang/String; = "error reason:\n\t"

.field private static final g:Ljava/lang/String; = "Crash time: \'"

.field private static final h:Ljava/lang/String; = ".xcrash"

.field private static final i:I = 0x240c8400

.field private static final j:I = 0x19000

.field private static final k:I = 0xa

.field private static final l:I = 0x14

.field private static final m:Ljava/lang/String; = "@[0-9a-fA-F]{1,10}"

.field private static final n:Ljava/lang/String; = "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}"

.field private static final o:Ljava/lang/String; = "0x[0-9a-fA-F]{1,10}"

.field private static final p:Ljava/lang/String; = "\\d+[B,KB,MB]*"

.field private static final q:Ljava/lang/String; = "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

.field private static final r:I = 0x14

.field private static final s:Z

.field private static final t:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

.field private final v:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/f;)V
    .locals 8

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "xcrash.XCrash$InitParameters"

    .line 64
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 65
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "setNativeDumpAllThreads"

    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "setLogDir"

    .line 68
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "setNativeDumpMap"

    .line 69
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "setNativeDumpFds"

    .line 70
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "setJavaDumpAllThreads"

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "setAnrRethrow"

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "xcrash.XCrash"

    .line 74
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "init"

    .line 75
    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    .line 76
    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    aput-object p1, v6, v2

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :goto_0
    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->v:Lcom/xiaomi/onetrack/api/f;

    const/4 p1, 0x3

    .line 82
    new-array p1, p1, [Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v3, "java"

    invoke-direct {p2, p0, v3}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v2

    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v2, "anr"

    invoke-direct {p2, p0, v2}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v1

    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v1, "native"

    invoke-direct {p2, p0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/f;Lcom/xiaomi/onetrack/CrashAnalysis$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/CrashAnalysis;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/f;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)J
    .locals 2

    .line 30
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .line 240
    invoke-static {}, Lcom/xiaomi/onetrack/util/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(J)V
    .locals 4

    .line 276
    invoke-static {}, Lcom/xiaomi/onetrack/util/ac;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 278
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->d(J)V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 7

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/e/a;->a(Landroid/content/Context;)V

    const-string/jumbo v0, "xcrash.XCrash"

    .line 104
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initHooker"

    const/4 v2, 0x2

    .line 105
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "CrashAnalysis"

    const-string v0, "registerHook succeeded"

    .line 107
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CrashAnalysis"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHook failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 232
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 233
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v4

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/CrashAnalysis;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->d()Z

    move-result p0

    return p0
.end method

.method private b()J
    .locals 11

    .line 252
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0xa

    if-nez v2, :cond_0

    const-string v0, "CrashAnalysis"

    const-string v1, "no ticket data found, return max count"

    .line 254
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    .line 257
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/ac;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    .line 259
    div-long v9, v0, v7

    cmp-long v2, v9, v5

    if-eqz v2, :cond_1

    const-string v0, "CrashAnalysis"

    const-string v1, "no today\'s ticket, return max count"

    .line 260
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_1
    mul-long/2addr v5, v7

    sub-long/2addr v0, v5

    const-string v2, "CrashAnalysis"

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "today\'s remain ticket is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 5

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "Crash time: \'"

    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    add-int/lit8 v0, v0, 0xd

    const-string v4, "\'\n"

    .line 218
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 219
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CrashAnalysis"

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCrashTimeStamp error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v1
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/CrashAnalysis;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->e()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/CrashAnalysis;)Lcom/xiaomi/onetrack/api/f;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->v:Lcom/xiaomi/onetrack/api/f;

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "uncategoried"

    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "anr"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const-string p1, " tid=1 "

    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_1

    const-string v2, "\n  at "

    .line 162
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x6

    .line 163
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v1, :cond_1

    add-int/lit8 p1, p1, 0x2

    .line 164
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string p1, "error reason:\n\t"

    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_1

    add-int/lit8 p1, p1, 0xf

    const-string v2, "\n\n"

    .line 168
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 169
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CrashAnalysis"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getErrorReasonString error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CrashAnalysis"

    const-string v1, "this path does not denote a directory, or if an I/O error occurs."

    .line 290
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/xiaomi/onetrack/CrashAnalysis$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis$2;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    add-int/lit8 v2, v1, -0x14

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 306
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-static {v4}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "\\t"

    const-string v1, ""

    .line 445
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\n"

    .line 446
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    array-length v1, p0

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 451
    aget-object v4, p0, v3

    const-string v5, "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

    const-string v6, "$1XX"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}|@[0-9a-fA-F]{1,10}|0x[0-9a-fA-F]{1,10}"

    const-string v6, "XX"

    .line 452
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\d+[B,KB,MB]*"

    const-string v6, ""

    .line 453
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v1, :cond_2

    .line 457
    aget-object v3, p0, v2

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, p0, v2

    const-string v4, "more"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 460
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 463
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/c/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "anr"

    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const-string p1, " tid=1 "

    .line 187
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_1

    const-string v2, "\n\n"

    .line 189
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 191
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string p1, "backtrace feature id:\n\t"

    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x17

    const-string v2, "\n\n"

    .line 198
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 199
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CrashAnalysis"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateFeatureId error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private d()Z
    .locals 24

    move-object/from16 v0, p0

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->c()Ljava/util/List;

    move-result-object v1

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->b()J

    move-result-wide v2

    if-eqz v1, :cond_a

    .line 327
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 329
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->b()J

    move-result-wide v7

    cmp-long v9, v7, v5

    const-wide/32 v10, 0x240c8400

    if-lez v9, :cond_0

    sub-long v7, v5, v10

    .line 338
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v12, 0x0

    move-wide v14, v2

    move-wide v2, v12

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/io/File;

    .line 339
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    sub-long v20, v5, v10

    cmp-long v16, v18, v20

    if-ltz v16, :cond_7

    cmp-long v16, v18, v5

    if-lez v16, :cond_1

    goto :goto_3

    :cond_1
    cmp-long v16, v18, v7

    if-gtz v16, :cond_2

    const-string v4, "CrashAnalysis"

    const-string v10, "found already reported crash file, ignore"

    .line 347
    invoke-static {v4, v10}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    cmp-long v10, v14, v12

    if-lez v10, :cond_6

    .line 352
    iget-object v10, v0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    array-length v11, v10

    move-wide/from16 v22, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v11, :cond_5

    aget-object v3, v10, v2

    .line 353
    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a(Ljava/io/File;)Z

    move-result v3

    const/16 v16, 0x1

    if-eqz v3, :cond_4

    const-string v3, "CrashAnalysis"

    .line 354
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "find crash file:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v12, 0x1

    sub-long/2addr v14, v12

    cmp-long v3, v22, v18

    if-gez v3, :cond_3

    move/from16 v9, v16

    move-wide/from16 v22, v18

    goto :goto_2

    :cond_3
    move/from16 v9, v16

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_5
    move-wide/from16 v2, v22

    :cond_6
    const-wide/32 v10, 0x240c8400

    const-wide/16 v12, 0x0

    goto :goto_0

    :cond_7
    :goto_3
    const-string v10, "CrashAnalysis"

    .line 341
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove obsolete crash files: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    :goto_4
    const-wide/32 v10, 0x240c8400

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    :cond_8
    move-wide v10, v12

    cmp-long v1, v2, v10

    if-lez v1, :cond_9

    .line 366
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/aa;->c(J)V

    :cond_9
    move/from16 v17, v9

    move-wide v2, v14

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    :goto_5
    if-eqz v17, :cond_b

    .line 371
    invoke-direct {v0, v2, v3}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(J)V

    :cond_b
    return v17
.end method

.method private e()V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 379
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isSupport()Z
    .locals 1

    :try_start_0
    const-string/jumbo v0, "xcrash.XCrash"

    .line 91
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static start(Landroid/content/Context;Lcom/xiaomi/onetrack/api/f;)V
    .locals 3

    .line 115
    sget-object v0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/xiaomi/onetrack/CrashAnalysis$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis$1;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/f;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "CrashAnalysis"

    const-string p1, "run method has been invoked more than once"

    .line 134
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
