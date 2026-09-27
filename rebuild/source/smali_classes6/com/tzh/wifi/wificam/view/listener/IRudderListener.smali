.class public interface abstract Lcom/tzh/wifi/wificam/view/listener/IRudderListener;
.super Ljava/lang/Object;
.source "IRudderListener.java"


# virtual methods
.method public abstract closeVoiceControl()V
.end method

.method public abstract onAccNotify(II)V
.end method

.method public abstract onDirNotify(III)V
.end method

.method public abstract onPathFollowNotify(ZLjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;",
            ">;)V"
        }
    .end annotation
.end method
