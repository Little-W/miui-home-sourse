.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$FYUotplnVTbB4wRlEas9IZ4qwV4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$FYUotplnVTbB4wRlEas9IZ4qwV4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$FYUotplnVTbB4wRlEas9IZ4qwV4;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$FYUotplnVTbB4wRlEas9IZ4qwV4;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$FYUotplnVTbB4wRlEas9IZ4qwV4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$FYUotplnVTbB4wRlEas9IZ4qwV4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/AbstractFloatingView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AbstractFloatingView;->onDarkModeChange()V

    return-void
.end method
