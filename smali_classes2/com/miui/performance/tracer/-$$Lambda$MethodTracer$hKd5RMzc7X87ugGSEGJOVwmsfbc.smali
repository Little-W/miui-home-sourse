.class public final synthetic Lcom/miui/performance/tracer/-$$Lambda$MethodTracer$hKd5RMzc7X87ugGSEGJOVwmsfbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/performance/tracer/-$$Lambda$MethodTracer$hKd5RMzc7X87ugGSEGJOVwmsfbc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/performance/tracer/-$$Lambda$MethodTracer$hKd5RMzc7X87ugGSEGJOVwmsfbc;

    invoke-direct {v0}, Lcom/miui/performance/tracer/-$$Lambda$MethodTracer$hKd5RMzc7X87ugGSEGJOVwmsfbc;-><init>()V

    sput-object v0, Lcom/miui/performance/tracer/-$$Lambda$MethodTracer$hKd5RMzc7X87ugGSEGJOVwmsfbc;->INSTANCE:Lcom/miui/performance/tracer/-$$Lambda$MethodTracer$hKd5RMzc7X87ugGSEGJOVwmsfbc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/miui/performance/tracer/MethodTracer;->lambda$prepareStart$0()V

    return-void
.end method
