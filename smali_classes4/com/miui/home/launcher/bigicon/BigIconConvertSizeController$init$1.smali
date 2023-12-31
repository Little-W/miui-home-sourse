.class final Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$init$1;
.super Ljava/lang/Object;
.source "BigIconConvertSizeController.kt"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->init(Ljava/util/List;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "TT;TK;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$init$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$init$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$init$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$init$1;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$init$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/home/launcher/ShortcutInfo;)J
    .locals 0

    const-string p0, "shortcutInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-wide p0, p1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    return-wide p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController$init$1;->apply(Lcom/miui/home/launcher/ShortcutInfo;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
