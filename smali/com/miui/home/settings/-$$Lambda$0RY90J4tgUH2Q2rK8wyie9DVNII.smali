.class public final synthetic Lcom/miui/home/settings/-$$Lambda$0RY90J4tgUH2Q2rK8wyie9DVNII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/settings/IconCustomizeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/IconCustomizeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/-$$Lambda$0RY90J4tgUH2Q2rK8wyie9DVNII;->f$0:Lcom/miui/home/settings/IconCustomizeFragment;

    return-void
.end method


# virtual methods
.method public final onIconSizeChange(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/-$$Lambda$0RY90J4tgUH2Q2rK8wyie9DVNII;->f$0:Lcom/miui/home/settings/IconCustomizeFragment;

    invoke-virtual {v0, p1}, Lcom/miui/home/settings/IconCustomizeFragment;->onIconSizeChange(Ljava/lang/Float;)V

    return-void
.end method
