.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$_vxkVObrj71O7zMYyGN-pJieZE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$_vxkVObrj71O7zMYyGN-pJieZE0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$_vxkVObrj71O7zMYyGN-pJieZE0;

    invoke-direct {v0}, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$_vxkVObrj71O7zMYyGN-pJieZE0;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$_vxkVObrj71O7zMYyGN-pJieZE0;->INSTANCE:Lcom/miui/home/recents/views/-$$Lambda$TaskStackView$_vxkVObrj71O7zMYyGN-pJieZE0;

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

    check-cast p1, Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskStackView;->lambda$onReturnViewToPool$1(Lcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method
