.class public final synthetic Lcom/xiaomi/dist/common/-$$Lambda$DeviceType$M8QrIuPwgp9TDI0Fr2EFI4O2qqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/dist/common/-$$Lambda$DeviceType$M8QrIuPwgp9TDI0Fr2EFI4O2qqM;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/xiaomi/dist/common/-$$Lambda$DeviceType$M8QrIuPwgp9TDI0Fr2EFI4O2qqM;->f$0:I

    check-cast p1, Lcom/xiaomi/dist/common/DeviceType;

    invoke-static {p0, p1}, Lcom/xiaomi/dist/common/DeviceType;->lambda$valueOf$0(ILcom/xiaomi/dist/common/DeviceType;)Z

    move-result p0

    return p0
.end method
