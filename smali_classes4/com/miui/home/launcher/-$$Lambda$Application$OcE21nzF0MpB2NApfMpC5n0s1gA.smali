.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$OcE21nzF0MpB2NApfMpC5n0s1gA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/miui/home/launcher/Application;->lambda$loadFeedModules$3(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
