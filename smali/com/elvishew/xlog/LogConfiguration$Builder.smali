.class public Lcom/elvishew/xlog/LogConfiguration$Builder;
.super Ljava/lang/Object;
.source "LogConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elvishew/xlog/LogConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private borderFormatter:Lcom/elvishew/xlog/formatter/border/BorderFormatter;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/elvishew/xlog/interceptor/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private jsonFormatter:Lcom/elvishew/xlog/formatter/message/json/JsonFormatter;

.field private logLevel:I

.field private objectFormatters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/elvishew/xlog/formatter/message/object/ObjectFormatter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private stackTraceDepth:I

.field private stackTraceFormatter:Lcom/elvishew/xlog/formatter/stacktrace/StackTraceFormatter;

.field private stackTraceOrigin:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private threadFormatter:Lcom/elvishew/xlog/formatter/thread/ThreadFormatter;

.field private throwableFormatter:Lcom/elvishew/xlog/formatter/message/throwable/ThrowableFormatter;

.field private withBorder:Z

.field private withStackTrace:Z

.field private withThread:Z

.field private xmlFormatter:Lcom/elvishew/xlog/formatter/message/xml/XmlFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 196
    iput v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->logLevel:I

    const-string v0, "X-LOG"

    .line 201
    iput-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/elvishew/xlog/LogConfiguration$Builder;)I
    .locals 0

    .line 187
    iget p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->logLevel:I

    return p0
.end method

.method static synthetic access$100(Lcom/elvishew/xlog/LogConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/elvishew/xlog/LogConfiguration$Builder;)Lcom/elvishew/xlog/formatter/thread/ThreadFormatter;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->threadFormatter:Lcom/elvishew/xlog/formatter/thread/ThreadFormatter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/elvishew/xlog/LogConfiguration$Builder;)Lcom/elvishew/xlog/formatter/stacktrace/StackTraceFormatter;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->stackTraceFormatter:Lcom/elvishew/xlog/formatter/stacktrace/StackTraceFormatter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/elvishew/xlog/LogConfiguration$Builder;)Lcom/elvishew/xlog/formatter/border/BorderFormatter;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->borderFormatter:Lcom/elvishew/xlog/formatter/border/BorderFormatter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/elvishew/xlog/LogConfiguration$Builder;)Ljava/util/Map;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->objectFormatters:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/elvishew/xlog/LogConfiguration$Builder;)Ljava/util/List;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/elvishew/xlog/LogConfiguration$Builder;)Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->withThread:Z

    return p0
.end method

.method static synthetic access$300(Lcom/elvishew/xlog/LogConfiguration$Builder;)Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->withStackTrace:Z

    return p0
.end method

.method static synthetic access$400(Lcom/elvishew/xlog/LogConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->stackTraceOrigin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/elvishew/xlog/LogConfiguration$Builder;)I
    .locals 0

    .line 187
    iget p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->stackTraceDepth:I

    return p0
.end method

.method static synthetic access$600(Lcom/elvishew/xlog/LogConfiguration$Builder;)Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->withBorder:Z

    return p0
.end method

.method static synthetic access$700(Lcom/elvishew/xlog/LogConfiguration$Builder;)Lcom/elvishew/xlog/formatter/message/json/JsonFormatter;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->jsonFormatter:Lcom/elvishew/xlog/formatter/message/json/JsonFormatter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/elvishew/xlog/LogConfiguration$Builder;)Lcom/elvishew/xlog/formatter/message/xml/XmlFormatter;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->xmlFormatter:Lcom/elvishew/xlog/formatter/message/xml/XmlFormatter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/elvishew/xlog/LogConfiguration$Builder;)Lcom/elvishew/xlog/formatter/message/throwable/ThrowableFormatter;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->throwableFormatter:Lcom/elvishew/xlog/formatter/message/throwable/ThrowableFormatter;

    return-object p0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->jsonFormatter:Lcom/elvishew/xlog/formatter/message/json/JsonFormatter;

    if-nez v0, :cond_0

    .line 549
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createJsonFormatter()Lcom/elvishew/xlog/formatter/message/json/JsonFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->jsonFormatter:Lcom/elvishew/xlog/formatter/message/json/JsonFormatter;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->xmlFormatter:Lcom/elvishew/xlog/formatter/message/xml/XmlFormatter;

    if-nez v0, :cond_1

    .line 552
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createXmlFormatter()Lcom/elvishew/xlog/formatter/message/xml/XmlFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->xmlFormatter:Lcom/elvishew/xlog/formatter/message/xml/XmlFormatter;

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->throwableFormatter:Lcom/elvishew/xlog/formatter/message/throwable/ThrowableFormatter;

    if-nez v0, :cond_2

    .line 555
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createThrowableFormatter()Lcom/elvishew/xlog/formatter/message/throwable/ThrowableFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->throwableFormatter:Lcom/elvishew/xlog/formatter/message/throwable/ThrowableFormatter;

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->threadFormatter:Lcom/elvishew/xlog/formatter/thread/ThreadFormatter;

    if-nez v0, :cond_3

    .line 558
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createThreadFormatter()Lcom/elvishew/xlog/formatter/thread/ThreadFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->threadFormatter:Lcom/elvishew/xlog/formatter/thread/ThreadFormatter;

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->stackTraceFormatter:Lcom/elvishew/xlog/formatter/stacktrace/StackTraceFormatter;

    if-nez v0, :cond_4

    .line 561
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createStackTraceFormatter()Lcom/elvishew/xlog/formatter/stacktrace/StackTraceFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->stackTraceFormatter:Lcom/elvishew/xlog/formatter/stacktrace/StackTraceFormatter;

    .line 563
    :cond_4
    iget-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->borderFormatter:Lcom/elvishew/xlog/formatter/border/BorderFormatter;

    if-nez v0, :cond_5

    .line 564
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createBorderFormatter()Lcom/elvishew/xlog/formatter/border/BorderFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->borderFormatter:Lcom/elvishew/xlog/formatter/border/BorderFormatter;

    .line 566
    :cond_5
    iget-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->objectFormatters:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 567
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->builtinObjectFormatters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->objectFormatters:Ljava/util/Map;

    :cond_6
    return-void
.end method


# virtual methods
.method public build()Lcom/elvishew/xlog/LogConfiguration;
    .locals 1

    .line 543
    invoke-direct {p0}, Lcom/elvishew/xlog/LogConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V

    .line 544
    new-instance v0, Lcom/elvishew/xlog/LogConfiguration;

    invoke-direct {v0, p0}, Lcom/elvishew/xlog/LogConfiguration;-><init>(Lcom/elvishew/xlog/LogConfiguration$Builder;)V

    return-object v0
.end method

.method public logLevel(I)Lcom/elvishew/xlog/LogConfiguration$Builder;
    .locals 0

    .line 319
    iput p1, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->logLevel:I

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/elvishew/xlog/LogConfiguration$Builder;
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/elvishew/xlog/LogConfiguration$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
